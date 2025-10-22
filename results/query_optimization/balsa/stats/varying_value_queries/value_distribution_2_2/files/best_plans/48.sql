/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<95 AND p.CommentCount>7 AND p.CommentCount<44 AND u.DownVotes>743 AND u.DownVotes<933 AND v.CreationDate>'2009-07-28 00:19:04'::timestamp AND v.CreationDate<'2012-04-24 03:22:18'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-09-18 18:33:30'::timestamp AND b.Date<'2014-03-25 23:48:35'::timestamp;

