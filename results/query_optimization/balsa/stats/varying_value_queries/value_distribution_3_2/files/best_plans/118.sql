/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<63 AND p.CommentCount>13 AND p.CommentCount<15 AND u.DownVotes>243 AND u.DownVotes<1116 AND v.CreationDate>'2012-08-17 04:13:51'::timestamp AND v.CreationDate<'2014-06-13 12:09:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-09-11 02:20:53'::timestamp AND b.Date<'2013-11-28 19:04:58'::timestamp;

