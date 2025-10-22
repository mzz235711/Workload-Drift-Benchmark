/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<87 AND p.CommentCount>3 AND p.CommentCount<33 AND u.DownVotes>291 AND u.DownVotes<1126 AND v.CreationDate>'2010-12-30 17:45:53'::timestamp AND v.CreationDate<'2014-01-22 08:32:30'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-11-14 05:09:04'::timestamp AND b.Date<'2014-04-14 17:40:38'::timestamp;

