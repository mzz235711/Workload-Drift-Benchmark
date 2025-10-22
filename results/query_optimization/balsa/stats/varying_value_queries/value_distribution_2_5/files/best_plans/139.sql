/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 SeqScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<76 AND p.CommentCount>7 AND p.CommentCount<35 AND u.DownVotes>341 AND u.DownVotes<1447 AND v.CreationDate>'2010-03-22 14:42:42'::timestamp AND v.CreationDate<'2013-12-02 21:31:13'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-07-13 21:43:23'::timestamp AND b.Date<'2013-07-15 12:39:55'::timestamp;

