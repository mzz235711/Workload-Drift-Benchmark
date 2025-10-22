/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<36 AND p.CommentCount>1 AND p.CommentCount<14 AND u.DownVotes>320 AND u.DownVotes<1692 AND v.CreationDate>'2010-02-16 21:25:28'::timestamp AND v.CreationDate<'2011-08-28 15:34:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-04-14 05:04:10'::timestamp AND b.Date<'2013-09-20 01:10:17'::timestamp;

