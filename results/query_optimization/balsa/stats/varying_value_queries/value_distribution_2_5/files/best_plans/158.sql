/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<39 AND p.CommentCount>2 AND p.CommentCount<38 AND u.DownVotes>260 AND u.DownVotes<1533 AND v.CreationDate>'2010-01-06 08:52:54'::timestamp AND v.CreationDate<'2013-04-16 01:34:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-10-04 09:51:49'::timestamp AND b.Date<'2012-10-03 16:15:31'::timestamp;

