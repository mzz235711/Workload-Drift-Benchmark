/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<137 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>259 AND u.DownVotes<1356 AND v.CreationDate>'2012-08-16 21:17:18'::timestamp AND v.CreationDate<'2012-09-09 06:11:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-06-17 22:47:17'::timestamp AND b.Date<'2012-11-28 10:05:59'::timestamp;

