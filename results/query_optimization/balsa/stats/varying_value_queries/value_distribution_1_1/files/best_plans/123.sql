/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<59 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>245 AND u.DownVotes<1917 AND v.CreationDate>'2013-10-30 05:42:56'::timestamp AND v.CreationDate<'2014-07-19 09:19:01'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2012-12-26 07:58:10'::timestamp AND b.Date<'2014-07-13 09:49:48'::timestamp;

