/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<61 AND p.CommentCount>0 AND p.CommentCount<25 AND u.DownVotes>62 AND u.DownVotes<1756 AND v.CreationDate>'2009-03-13 13:18:15'::timestamp AND v.CreationDate<'2011-12-17 19:17:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-04-29 10:57:23'::timestamp AND b.Date<'2013-07-12 08:31:10'::timestamp;

