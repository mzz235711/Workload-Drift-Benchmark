/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(p u)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v ((p u) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>140 AND p.Score<177 AND p.CommentCount>1 AND p.CommentCount<13 AND u.DownVotes>18 AND u.DownVotes<1906 AND v.CreationDate>'2013-10-17 09:12:43'::timestamp AND v.CreationDate<'2013-11-04 17:30:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-07-30 16:47:03'::timestamp AND b.Date<'2011-07-05 02:03:23'::timestamp;

