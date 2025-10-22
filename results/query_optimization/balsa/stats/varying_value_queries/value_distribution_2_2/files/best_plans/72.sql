/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>134 AND p.Score<190 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>96 AND u.DownVotes<1740 AND v.CreationDate>'2010-08-06 13:42:02'::timestamp AND v.CreationDate<'2012-07-19 16:03:25'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-07-23 16:20:45'::timestamp AND b.Date<'2012-09-01 17:27:56'::timestamp;

