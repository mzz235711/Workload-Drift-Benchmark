/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<72 AND p.CommentCount>2 AND p.CommentCount<12 AND u.DownVotes>106 AND u.DownVotes<1318 AND v.CreationDate>'2012-08-15 01:51:27'::timestamp AND v.CreationDate<'2013-06-05 19:40:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-08-26 10:22:55'::timestamp AND b.Date<'2012-02-09 10:10:21'::timestamp;

