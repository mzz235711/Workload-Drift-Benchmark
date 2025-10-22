/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>372 AND u.DownVotes<994 AND v.CreationDate>'2011-01-13 05:48:30'::timestamp AND v.CreationDate<'2013-08-07 05:43:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-11-17 17:34:08'::timestamp AND b.Date<'2012-11-02 13:19:18'::timestamp;

