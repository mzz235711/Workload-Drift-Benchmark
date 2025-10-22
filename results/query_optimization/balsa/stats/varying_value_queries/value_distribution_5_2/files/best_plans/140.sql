/*+ HashJoin(v p u b)
 NestLoop(u b)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<105 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>749 AND u.DownVotes<799 AND v.CreationDate>'2009-11-14 13:07:49'::timestamp AND v.CreationDate<'2012-06-25 03:02:46'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2010-08-25 14:33:40'::timestamp AND b.Date<'2012-10-17 11:38:11'::timestamp;

