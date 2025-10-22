/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<175 AND p.CommentCount>10 AND p.CommentCount<18 AND u.DownVotes>170 AND u.DownVotes<1809 AND v.CreationDate>'2011-01-20 02:43:06'::timestamp AND v.CreationDate<'2013-06-10 04:45:25'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2014-01-14 09:41:51'::timestamp AND b.Date<'2014-05-27 22:24:13'::timestamp;

