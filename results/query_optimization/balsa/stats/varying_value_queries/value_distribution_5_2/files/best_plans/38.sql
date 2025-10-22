/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<44 AND p.CommentCount>4 AND p.CommentCount<16 AND u.DownVotes>409 AND u.DownVotes<1092 AND v.CreationDate>'2010-12-07 10:36:05'::timestamp AND v.CreationDate<'2013-02-17 10:39:25'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2013-05-23 03:25:39'::timestamp AND b.Date<'2013-11-23 11:51:27'::timestamp;

