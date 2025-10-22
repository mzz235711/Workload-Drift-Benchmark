/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<144 AND p.CommentCount>1 AND p.CommentCount<40 AND u.DownVotes>67 AND u.DownVotes<1018 AND v.CreationDate>'2011-10-20 18:06:12'::timestamp AND v.CreationDate<'2012-07-05 14:54:35'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2012-12-27 13:51:45'::timestamp AND b.Date<'2014-05-15 04:29:01'::timestamp;

