/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<83 AND p.CommentCount>16 AND p.CommentCount<35 AND u.DownVotes>136 AND u.DownVotes<681 AND v.CreationDate>'2009-09-03 08:57:17'::timestamp AND v.CreationDate<'2011-09-26 12:27:29'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-03-10 06:07:13'::timestamp AND b.Date<'2014-06-11 17:14:11'::timestamp;

