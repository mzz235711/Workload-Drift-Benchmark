/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<125 AND p.CommentCount>7 AND p.CommentCount<33 AND u.DownVotes>76 AND u.DownVotes<1636 AND v.CreationDate>'2013-07-12 16:55:51'::timestamp AND v.CreationDate<'2014-03-16 20:52:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2014-01-15 04:08:22'::timestamp AND b.Date<'2014-07-03 01:49:58'::timestamp;

