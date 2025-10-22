/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<103 AND p.CommentCount>18 AND p.CommentCount<37 AND u.DownVotes>17 AND u.DownVotes<1620 AND v.CreationDate>'2013-10-05 16:27:38'::timestamp AND v.CreationDate<'2014-06-29 22:10:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2011-03-09 21:49:30'::timestamp AND b.Date<'2012-02-16 23:11:01'::timestamp;

