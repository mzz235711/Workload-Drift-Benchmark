/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<79 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>256 AND u.DownVotes<1303 AND v.CreationDate>'2009-11-19 04:58:12'::timestamp AND v.CreationDate<'2014-06-29 08:26:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-01-03 11:49:27'::timestamp AND b.Date<'2013-08-12 10:38:46'::timestamp;

