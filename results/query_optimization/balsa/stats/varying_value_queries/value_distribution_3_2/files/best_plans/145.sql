/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<156 AND p.CommentCount>1 AND p.CommentCount<5 AND u.DownVotes>93 AND u.DownVotes<1454 AND v.CreationDate>'2011-09-07 10:02:23'::timestamp AND v.CreationDate<'2014-06-10 07:13:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-06-18 07:37:44'::timestamp AND b.Date<'2012-10-04 21:16:31'::timestamp;

