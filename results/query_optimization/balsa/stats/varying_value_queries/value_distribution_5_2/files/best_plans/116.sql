/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<177 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>428 AND u.DownVotes<1868 AND v.CreationDate>'2011-12-20 04:13:02'::timestamp AND v.CreationDate<'2013-04-22 16:15:56'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2011-06-10 15:16:24'::timestamp AND b.Date<'2012-08-05 09:45:12'::timestamp;

