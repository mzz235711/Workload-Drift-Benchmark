/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<79 AND p.CommentCount>3 AND p.CommentCount<19 AND u.DownVotes>169 AND u.DownVotes<339 AND v.CreationDate>'2010-04-30 20:32:01'::timestamp AND v.CreationDate<'2012-07-25 09:48:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-12-13 06:28:13'::timestamp AND b.Date<'2011-10-20 10:19:43'::timestamp;

