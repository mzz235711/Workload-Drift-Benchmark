/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<40 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>49 AND u.DownVotes<1325 AND v.CreationDate>'2010-08-06 07:04:23'::timestamp AND v.CreationDate<'2010-09-01 07:23:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-09-13 04:10:54'::timestamp AND b.Date<'2013-03-09 20:44:36'::timestamp;

