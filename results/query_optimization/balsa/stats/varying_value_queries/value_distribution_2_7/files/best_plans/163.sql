/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<175 AND p.CommentCount>2 AND p.CommentCount<32 AND u.DownVotes>123 AND u.DownVotes<1171 AND v.CreationDate>'2009-07-30 05:04:28'::timestamp AND v.CreationDate<'2011-09-17 14:32:47'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-03-29 01:44:50'::timestamp AND b.Date<'2013-05-05 23:20:48'::timestamp;

