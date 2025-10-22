/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<128 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>7 AND u.DownVotes<1489 AND v.CreationDate>'2009-12-27 23:31:24'::timestamp AND v.CreationDate<'2010-12-13 09:45:21'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2010-11-17 04:46:50'::timestamp AND b.Date<'2014-03-21 06:27:46'::timestamp;

