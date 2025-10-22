/*+ MergeJoin(pl u p v)
 HashJoin(u p v)
 HashJoin(p v)
 IndexScan(pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((pl (u (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score<=11 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND v.CreationDate='2012-08-02 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=1725 AND u.CreationDate>='2010-07-19 19:31:36'::timestamp AND u.CreationDate<='2014-08-17 21:51:39'::timestamp;

