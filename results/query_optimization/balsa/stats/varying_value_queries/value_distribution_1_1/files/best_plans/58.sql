/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<29 AND p.CommentCount>9 AND p.CommentCount<39 AND u.DownVotes>725 AND u.DownVotes<1267 AND v.CreationDate>'2009-10-04 14:17:43'::timestamp AND v.CreationDate<'2012-11-20 07:12:05'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2011-12-12 00:51:35'::timestamp AND b.Date<'2012-01-19 11:46:27'::timestamp;

