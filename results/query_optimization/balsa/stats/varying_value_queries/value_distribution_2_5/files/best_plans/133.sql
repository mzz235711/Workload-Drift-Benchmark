/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<85 AND p.CommentCount>5 AND p.CommentCount<19 AND u.DownVotes>625 AND u.DownVotes<1424 AND v.CreationDate>'2011-08-09 16:38:04'::timestamp AND v.CreationDate<'2014-02-04 20:34:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-08-04 11:14:40'::timestamp AND b.Date<'2012-06-01 06:05:30'::timestamp;

