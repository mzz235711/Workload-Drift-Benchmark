/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<93 AND p.CommentCount>4 AND p.CommentCount<30 AND u.DownVotes>489 AND u.DownVotes<1016 AND v.CreationDate>'2010-09-08 02:00:17'::timestamp AND v.CreationDate<'2011-08-23 01:19:41'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<9 AND b.Date>'2010-11-24 23:24:23'::timestamp AND b.Date<'2011-05-05 18:15:36'::timestamp;

