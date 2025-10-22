/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<161 AND p.CommentCount>4 AND p.CommentCount<44 AND u.DownVotes>145 AND u.DownVotes<985 AND v.CreationDate>'2010-08-04 10:37:43'::timestamp AND v.CreationDate<'2013-06-29 10:08:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-10-18 19:48:14'::timestamp AND b.Date<'2012-12-18 02:25:08'::timestamp;

