/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<177 AND p.CommentCount>7 AND p.CommentCount<9 AND u.DownVotes>19 AND u.DownVotes<981 AND v.CreationDate>'2009-08-24 12:45:35'::timestamp AND v.CreationDate<'2012-10-20 17:26:45'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-12-30 14:56:28'::timestamp AND b.Date<'2012-08-04 02:51:50'::timestamp;

