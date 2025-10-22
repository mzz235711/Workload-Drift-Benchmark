/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>117 AND p.Score<132 AND p.CommentCount>9 AND p.CommentCount<36 AND u.DownVotes>367 AND u.DownVotes<1899 AND v.CreationDate>'2012-01-09 04:50:13'::timestamp AND v.CreationDate<'2013-05-18 13:05:10'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-07-14 11:12:45'::timestamp AND b.Date<'2013-08-21 03:42:12'::timestamp;

