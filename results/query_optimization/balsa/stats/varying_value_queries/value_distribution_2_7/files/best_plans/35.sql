/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<154 AND p.CommentCount>8 AND p.CommentCount<38 AND u.DownVotes>427 AND u.DownVotes<1190 AND v.CreationDate>'2009-03-27 15:47:24'::timestamp AND v.CreationDate<'2014-03-12 09:17:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-06-12 09:01:54'::timestamp AND b.Date<'2014-08-18 22:04:39'::timestamp;

