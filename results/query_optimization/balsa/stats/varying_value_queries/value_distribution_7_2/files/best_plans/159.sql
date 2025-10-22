/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<122 AND p.CommentCount>12 AND p.CommentCount<14 AND u.DownVotes>137 AND u.DownVotes<1173 AND v.CreationDate>'2009-06-09 17:55:25'::timestamp AND v.CreationDate<'2014-03-05 18:27:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-05-17 11:12:36'::timestamp AND b.Date<'2012-01-03 06:39:45'::timestamp;

