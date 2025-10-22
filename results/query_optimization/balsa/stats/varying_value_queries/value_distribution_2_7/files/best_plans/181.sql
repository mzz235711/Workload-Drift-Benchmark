/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<189 AND p.CommentCount>1 AND p.CommentCount<30 AND u.DownVotes>430 AND u.DownVotes<1022 AND v.CreationDate>'2010-12-21 09:29:31'::timestamp AND v.CreationDate<'2013-07-13 21:10:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-06-10 05:29:52'::timestamp AND b.Date<'2013-09-24 19:56:58'::timestamp;

