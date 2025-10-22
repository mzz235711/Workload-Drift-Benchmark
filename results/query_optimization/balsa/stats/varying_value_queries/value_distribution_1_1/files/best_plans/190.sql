/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<91 AND p.CommentCount>0 AND p.CommentCount<24 AND u.DownVotes>15 AND u.DownVotes<867 AND v.CreationDate>'2012-06-27 02:36:13'::timestamp AND v.CreationDate<'2013-10-01 17:44:55'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2012-08-10 03:43:32'::timestamp AND b.Date<'2014-02-10 02:20:41'::timestamp;

