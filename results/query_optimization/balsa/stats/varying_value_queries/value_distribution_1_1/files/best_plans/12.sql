/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<148 AND p.CommentCount>9 AND p.CommentCount<32 AND u.DownVotes>182 AND u.DownVotes<563 AND v.CreationDate>'2011-02-21 12:17:07'::timestamp AND v.CreationDate<'2013-08-31 06:27:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-10-02 21:49:27'::timestamp AND b.Date<'2014-04-19 01:34:54'::timestamp;

