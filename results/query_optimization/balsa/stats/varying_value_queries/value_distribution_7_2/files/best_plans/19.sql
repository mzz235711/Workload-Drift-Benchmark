/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<103 AND p.CommentCount>3 AND p.CommentCount<29 AND u.DownVotes>139 AND u.DownVotes<1732 AND v.CreationDate>'2012-12-27 15:01:24'::timestamp AND v.CreationDate<'2014-04-06 09:40:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-10-14 22:52:52'::timestamp AND b.Date<'2014-08-26 02:25:01'::timestamp;

