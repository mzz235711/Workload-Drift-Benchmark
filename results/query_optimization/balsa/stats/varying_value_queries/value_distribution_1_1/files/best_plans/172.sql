/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<143 AND p.CommentCount>2 AND p.CommentCount<4 AND u.DownVotes>522 AND u.DownVotes<1008 AND v.CreationDate>'2010-06-19 02:31:21'::timestamp AND v.CreationDate<'2011-10-13 16:25:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-04-05 09:14:01'::timestamp AND b.Date<'2013-06-04 16:40:24'::timestamp;

