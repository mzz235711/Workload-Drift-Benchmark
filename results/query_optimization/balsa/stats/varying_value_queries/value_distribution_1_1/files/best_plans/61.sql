/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<190 AND p.CommentCount>13 AND p.CommentCount<23 AND u.DownVotes>109 AND u.DownVotes<1001 AND v.CreationDate>'2013-06-04 03:45:19'::timestamp AND v.CreationDate<'2014-03-12 12:54:40'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2011-07-04 07:32:29'::timestamp AND b.Date<'2012-06-28 18:03:47'::timestamp;

