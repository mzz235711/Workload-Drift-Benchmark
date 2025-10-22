/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<12 AND p.CommentCount>13 AND p.CommentCount<42 AND u.DownVotes>387 AND u.DownVotes<797 AND v.CreationDate>'2009-08-29 10:27:01'::timestamp AND v.CreationDate<'2013-06-15 09:09:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-04-06 09:20:34'::timestamp AND b.Date<'2013-07-21 11:47:31'::timestamp;

