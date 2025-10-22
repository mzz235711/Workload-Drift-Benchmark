/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<138 AND p.CommentCount>2 AND p.CommentCount<16 AND u.DownVotes>719 AND u.DownVotes<1473 AND v.CreationDate>'2013-02-07 06:17:32'::timestamp AND v.CreationDate<'2013-07-19 05:35:53'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2013-07-03 22:11:55'::timestamp AND b.Date<'2013-10-14 19:06:30'::timestamp;

