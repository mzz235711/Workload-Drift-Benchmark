/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<83 AND p.CommentCount>14 AND p.CommentCount<25 AND u.DownVotes>86 AND u.DownVotes<430 AND v.CreationDate>'2010-06-07 19:49:24'::timestamp AND v.CreationDate<'2011-11-09 10:40:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-10-06 19:30:24'::timestamp AND b.Date<'2011-11-11 12:50:32'::timestamp;

