/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<144 AND p.CommentCount>9 AND p.CommentCount<44 AND u.DownVotes>598 AND u.DownVotes<1275 AND v.CreationDate>'2009-06-01 23:02:13'::timestamp AND v.CreationDate<'2013-08-03 20:57:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2013-06-16 09:10:20'::timestamp AND b.Date<'2014-06-01 05:08:01'::timestamp;

