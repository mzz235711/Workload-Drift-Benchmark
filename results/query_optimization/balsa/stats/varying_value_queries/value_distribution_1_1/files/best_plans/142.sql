/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<31 AND p.CommentCount>11 AND p.CommentCount<44 AND u.DownVotes>91 AND u.DownVotes<1348 AND v.CreationDate>'2012-01-01 11:50:37'::timestamp AND v.CreationDate<'2013-10-31 07:10:39'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2011-02-24 16:46:51'::timestamp AND b.Date<'2014-06-30 04:22:38'::timestamp;

