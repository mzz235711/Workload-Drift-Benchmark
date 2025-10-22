/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<55 AND p.CommentCount>6 AND p.CommentCount<17 AND u.DownVotes>124 AND u.DownVotes<1255 AND v.CreationDate>'2011-03-01 05:51:59'::timestamp AND v.CreationDate<'2014-03-08 11:37:31'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-10-17 17:15:38'::timestamp AND b.Date<'2012-06-02 13:55:55'::timestamp;

