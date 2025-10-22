/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<105 AND p.CommentCount>9 AND p.CommentCount<17 AND u.DownVotes>313 AND u.DownVotes<1316 AND v.CreationDate>'2010-09-09 09:31:49'::timestamp AND v.CreationDate<'2013-04-06 18:27:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-05-03 14:30:41'::timestamp AND b.Date<'2014-03-05 00:24:57'::timestamp;

