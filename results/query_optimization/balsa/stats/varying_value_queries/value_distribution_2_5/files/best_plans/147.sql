/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<188 AND p.CommentCount>15 AND p.CommentCount<44 AND u.DownVotes>112 AND u.DownVotes<1207 AND v.CreationDate>'2012-06-25 02:43:00'::timestamp AND v.CreationDate<'2013-02-06 19:34:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-03-10 02:08:43'::timestamp AND b.Date<'2012-03-31 23:27:28'::timestamp;

