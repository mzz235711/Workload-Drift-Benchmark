/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<145 AND p.CommentCount>25 AND p.CommentCount<35 AND u.DownVotes>75 AND u.DownVotes<1365 AND v.CreationDate>'2010-12-01 13:38:12'::timestamp AND v.CreationDate<'2014-04-27 04:01:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-10-05 06:42:18'::timestamp AND b.Date<'2012-10-09 21:26:22'::timestamp;

