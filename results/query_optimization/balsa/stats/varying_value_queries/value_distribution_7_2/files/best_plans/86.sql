/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<161 AND p.CommentCount>13 AND p.CommentCount<18 AND u.DownVotes>98 AND u.DownVotes<367 AND v.CreationDate>'2013-07-17 12:00:49'::timestamp AND v.CreationDate<'2014-03-15 18:52:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-06-25 23:33:45'::timestamp AND b.Date<'2014-07-12 17:42:21'::timestamp;

