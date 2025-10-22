/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<105 AND p.CommentCount>1 AND p.CommentCount<41 AND u.DownVotes>152 AND u.DownVotes<1658 AND v.CreationDate>'2009-10-03 22:52:20'::timestamp AND v.CreationDate<'2012-10-03 11:22:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2014-05-26 12:23:33'::timestamp AND b.Date<'2014-07-21 12:58:32'::timestamp;

