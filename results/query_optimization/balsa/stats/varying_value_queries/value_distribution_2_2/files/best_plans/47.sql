/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>116 AND p.Score<148 AND p.CommentCount>1 AND p.CommentCount<12 AND u.DownVotes>123 AND u.DownVotes<1597 AND v.CreationDate>'2009-07-22 17:44:53'::timestamp AND v.CreationDate<'2014-04-27 22:21:14'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2013-12-13 03:33:02'::timestamp AND b.Date<'2014-07-08 14:13:17'::timestamp;

