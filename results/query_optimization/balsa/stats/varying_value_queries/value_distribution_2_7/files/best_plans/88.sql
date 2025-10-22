/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<89 AND p.CommentCount>17 AND p.CommentCount<23 AND u.DownVotes>338 AND u.DownVotes<1489 AND v.CreationDate>'2009-04-27 18:13:08'::timestamp AND v.CreationDate<'2012-07-19 14:47:19'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-07-24 17:09:34'::timestamp AND b.Date<'2014-02-02 17:36:36'::timestamp;

