/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<183 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>777 AND u.DownVotes<1190 AND v.CreationDate>'2009-02-03 08:29:55'::timestamp AND v.CreationDate<'2011-10-02 09:24:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-02-01 12:01:07'::timestamp AND b.Date<'2013-05-25 20:45:05'::timestamp;

